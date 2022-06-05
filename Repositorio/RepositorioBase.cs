using Dados;

namespace Repositorio
{
    public class RepositorioBase
    {
        public ExemploMaterializacaoEntities Contexto
        {
            get
            {
                return _Contexto;
            }
            set
            {
                _Contexto = value;
            }
        }
        private ExemploMaterializacaoEntities _Contexto;

        public RepositorioBase()
        {
            _Contexto = new ExemploMaterializacaoEntities();
        }
    }
}
