using Microsoft.AspNetCore.Mvc;

namespace iPokemon.Controllers
{
    [ApiController]
    [Route("api")]
    public class PokemonController : ControllerBase
    {
        [HttpGet("pokemon/{pokemonId:long}")]
        public async Task<dynamic> GetPokemonById(long pokemonId)
        {
            return null;
        }
        [HttpGet("pokemon/{pokemonName:string}")]
        public async Task<dynamic> GetPokemonByName(string pokemonName)
        {
            return null;
        }
    }
}
