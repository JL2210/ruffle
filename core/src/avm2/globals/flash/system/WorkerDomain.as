package flash.system {
    [API("680")] // the docs say 682, that's wrong
    public final class WorkerDomain {
        public static const isSupported: Boolean = false;
        private static var _current:WorkerDomain;

        public function WorkerDomain()
        {
            if (_current)
            {
                throw new ArgumentError("Error #2012: WorkerDomain$ class cannot be instantiated.", 2012);
            }
        }

        public static function get current():WorkerDomain
        {
            stub_getter("flash.system.WorkerDomain", "current");
            if (!_current)
            {
                _current = new WorkerDomain();
            }
            return _current;
        }

        public function createWorker(_arg_1:ByteArray, _arg_2:Boolean = false):Worker
        {
            stub_method("flash.system.WorkerDomain", "createWorker");
            return new Worker();
        }
    }
}
