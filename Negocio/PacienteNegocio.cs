using Repositorio;
using System.Collections.Generic;
using TO;

namespace Negocio
{
    public class PacienteNegocio
    {
        public PacienteTO GetPacientePorId(int id)
        {
            PacienteRepositorio repPaciente = new PacienteRepositorio();
            return repPaciente.GetPacientePorId(id);
        }

        public List<PacienteTO> GetMeusPacientes()
        {
            PacienteRepositorio repPaciente = new PacienteRepositorio();
            return repPaciente.GetTodos();
        }

        public void Adicionar(PacienteTO paciente)
        {
            PacienteRepositorio repPaciente = new PacienteRepositorio();
            repPaciente.Novo(paciente);
        }

        public void Editar(PacienteTO paciente)
        {
            PacienteRepositorio repPaciente = new PacienteRepositorio();
            repPaciente.Atualiza(paciente);
        }
    }
}
