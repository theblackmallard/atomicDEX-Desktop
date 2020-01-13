pragma Singleton
import QtQuick 2.10

QtObject {
    function getAtomicApp() {
        const design_editor = typeof atomic_app === "undefined"
        return design_editor ? mockAPI() : atomic_app
    }

    function mockAPI() {
        return {
            first_run: function() {
                return false
            }
        }
    }
}
