const state = {
    currentUser: null,
};

const getters = {
    currentUser: state => state.currentUser,
};

export default {
    namespaced: true,
    state,
    getters
};