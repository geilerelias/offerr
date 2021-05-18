<x-guest-layout>


    <div class="bg-gray-100 h-screen w-screen">
        <div class="flex flex-col items-center flex-1 h-full justify-center px-4 sm:px-0">
            <div class="flex rounded-lg shadow-lg w-full sm:w-3/4 lg:w-1/2 bg-white sm:mx-0" style="height: 500px">
                <div class="flex flex-col w-full md:w-1/2 p-4">

                    <div class="flex flex-col items-center flex-1 h-full justify-center">
                        <x-jet-authentication-card-logo/>
                    </div>

                    <x-jet-validation-errors class="mb-4"/>

                    <form class="form-horizontal w-3/4 mx-auto" method="POST" action="{{ route('register') }}">
                        @csrf

                        <div>
                            <x-jet-label for="name" value="{{ __('Name') }}"/>
                            <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name"
                                         :value="old('name')" required autofocus autocomplete="name"/>
                        </div>

                        <div class="mt-4">
                            <x-jet-label for="email" value="{{ __('Email') }}"/>
                            <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email"
                                         :value="old('email')" required/>
                        </div>

                        <div class="mt-4">
                            <x-jet-label for="password" value="{{ __('Password') }}"/>
                            <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password"
                                         required autocomplete="new-password"/>
                        </div>

                        <div class="mt-4">
                            <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}"/>
                            <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password"
                                         name="password_confirmation" required autocomplete="new-password"/>
                        </div>

                        <div class="flex items-center justify-end mt-4">
                            <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                                {{ __('Already registered?') }}
                            </a>

                            <x-jet-button class="ml-4">
                                {{ __('Register') }}
                            </x-jet-button>
                        </div>
                    </form>

                </div>

                <div class="hidden md:block md:w-1/2 rounded-r-lg"
                     style="background: url({{asset('images/bg-login.jpg') }}); background-size: cover; background-position: center center;">
                </div>
            </div>
        </div>
    </div>
</x-guest-layout>
