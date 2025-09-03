using System.Data;
using MySql.Data.MySqlClient;
using Dapper;

namespace iPokemon
{
    public class Database
    {
        private readonly string _connectionString = "Server=localhost;Port=3306;Database=your_database_name;Uid=root;Pwd=;";


        public Database(string connectionString)
        {
            _connectionString = connectionString;
        }

        public IDbConnection CreateConnection()
        {
            var connection = new MySqlConnection(_connectionString);
            connection.Open();
            return connection;
        }

        public async Task<IEnumerable<T>> QueryAsync<T>(string sql, object? parameters = null)
        {
            using var connection = CreateConnection();
            return await connection.QueryAsync<T>(sql, parameters);
        }
        public async Task<int> ExecuteAsync(string sql, object? parameters = null)
        {
            using var connection = CreateConnection();
            return await connection.ExecuteAsync(sql, parameters);
        }
    }
}
