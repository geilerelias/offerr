<template>
    <business-Layout>
        <div slot="title">Seguidores</div>
        <v-container>
            <v-list
                subheader
                two-line
            >
                <v-subheader inset>Seguidores</v-subheader>
                <template v-for="item in followers">
                    <v-list-item
                        :key="item.id"
                        three-line
                    >
                        <v-list-item-avatar>
                            <v-img
                                :src="getUserProfile(item.user_id)"
                                aspect-ratio="1"
                                class="grey lighten-2"
                            >
                                <template v-slot:placeholder>
                                    <v-row
                                        class="fill-height ma-0"
                                        align="center"
                                        justify="center"
                                    >
                                        <v-progress-circular
                                            indeterminate
                                            color="grey lighten-5"
                                        ></v-progress-circular>
                                    </v-row>
                                </template>
                            </v-img>
                        </v-list-item-avatar>

                        <v-list-item-content>
                            <v-list-item-title v-text="getUserName(item.user_id)"></v-list-item-title>

                            <v-list-item-subtitle
                                v-text="item.review===null?'No hay descripción':item.review"></v-list-item-subtitle>

                        </v-list-item-content>

                        <v-list-item-action>
                            <v-rating
                                :value="item.score"
                                color="yellow accent-4"
                                length="5"
                                size="18"
                                readonly
                            ></v-rating>
                        </v-list-item-action>
                    </v-list-item>
                    <v-divider inset></v-divider>
                </template>
            </v-list>
        </v-container>
    </business-Layout>
</template>

<script>
import BusinessLayout from '@/Layouts/BusinessLayout.vue'

export default {
    name: "Followers",
    components: {
        BusinessLayout
    },

    data: () => ({
        files: [
            {
                color: 'blue',
                icon: 'mdi-clipboard-text',
                subtitle: 'Jan 20, 2014',
                title: 'Vacation itinerary',
            },
            {
                color: 'amber',
                icon: 'mdi-gesture-tap-button',
                subtitle: 'Jan 10, 2014',
                title: 'Kitchen remodel',
            },
        ],
        folders: [
            {
                subtitle: 'Jan 9, 2014',
                title: 'Photos',
            },
            {
                subtitle: 'Jan 17, 2014',
                title: 'Recipes',
            },
            {
                subtitle: 'Jan 28, 2014',
                title: 'Work',
            },
        ],
        followers: [],
        users: [],
    }),

    created() {
        let idActual = window.location.pathname
        idActual = idActual.split('/')[2];
        console.log('id  => ', idActual);
        axios
            .post(`/follower/${idActual}/business`)
            .then(response => {
                this.followers = response.data;
            });

        axios
            .post(`/users/all`)
            .then(response => {
                this.users = response.data;
            });


    },
    methods: {
        getUserName(id) {
            try {
                return this.users.find(item => item.id == id).name
            } catch (e) {

            }

        },
        getUserProfile(id) {
            try {
                let user = this.users.find(item => item.id == id);
                return user.profile_photo_url !== null ? user.profile_photo_url : user.profile_photo_path
            } catch (e) {

            }

        }
    }
}
</script>

<style scoped>

</style>
