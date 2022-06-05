using System;
using TO.Enums;

namespace TO
{
    public class PacienteTO
    {
        public int Id { get; set; }

        public string Nome { get; set; }

        public string NomeMae { get; set; }

        public DateTime? Nascimento { get; set; }

        public Sexo Sexo { get; set; }
    }
}
