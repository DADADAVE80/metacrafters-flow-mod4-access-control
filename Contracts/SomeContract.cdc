access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        /*
        * @read Area 1,2,3,4
        * @write Area 1,2,3,4
        */
        pub(set) var a: String

        /*
        * @read Area 1,2,3,4
        * @write Area 1
        */
        pub var b: String // Area

        /*
        * @read Area 1,2,3,4
        * @write Area 1
        */
        access(contract) var c: String

        /*
        * @read Area 1
        * @write Area 1
        */
        access(self) var d: String

        //
        // 3 Functions
        //

        /*
        * @callscope Area 1,2,3,4
        */
        pub fun publicFunc() {}

        /*
        * @callscope Area 1,2,3
        */
        access(contract) fun contractFunc() {}

        /*
        * @callscope Area 1
        */
        access(self) fun privateFunc() {}


        pub fun structFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/
    }

    init() {
        self.testStruct = SomeStruct()
    }
}
