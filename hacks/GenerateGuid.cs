using System;
namespace GenerateGuid
{
    class GenerateRandomGUIDs
    {
        private static void Main()
        {
            for (int n = 1; n < 100000000; n++)
            {
                Console.WriteLine(Guid.NewGuid());
            }
        }
    }
}

// GUID - https://en.wikipedia.org/wiki/Globally_unique_identifier
// MSDN reference - using System.Guid;
