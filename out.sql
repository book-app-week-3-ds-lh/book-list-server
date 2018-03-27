PGDMP             
            v        	   books_app    10.3    10.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    32777 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    32780    books    TABLE     �   CREATE TABLE public.books (
    book_id integer NOT NULL,
    author character varying(50),
    title character varying(255),
    isbn character varying(25),
    image_url character varying(255),
    description text NOT NULL
);
    DROP TABLE public.books;
       public         postgres    false    6            �            1259    32778    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public       postgres    false    6    197            �
           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
            public       postgres    false    196            o
           2604    32783    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    32780    books 
   TABLE DATA               U   COPY public.books (book_id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   j       �
           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 5, true);
            public       postgres    false    196            q
           2606    32788    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
   �
  x��X�n�F}E��/ñƒ�Ȁ��eKv|�m�q,4�&ٙf7�/3��~OUst�%p�� 4C6��N�:U��쭌^W+��ŮI!�>tJ�����?i[�^�=y��rW<�qg���Ώ��o��8���έ¢u�5jQ�>_xP9��������a���__����k����[+O����ޅs��������a[���gw_�N���e=^�T���إ�(5h���n#V��(�����Xv'������YZ��`)/������؉e���
ikaT3].��G��q��et�h��B��˶Ѯ�����G!��m���I��]�bPn0JH��1n�4����d�������F{��h����|�+�����㥟Q�vŪSW��0@��+;gO6^GDM ���\)v��6��h/��QXb��嚌X��\��1������}q�D�Z�� 3,?'
Q%�3���ŗ.�9�NV��zrF[������W�6u��t�wi��0�Ѓ��#P�q�����)�8Q
�E��4����V^���)��8'i�ZȰ�����*��*bh��(5��(ڢ�M��d"�]K"�K0��������/�kPz��/ �1�E$f���1m]t^�V�X�������Ӫ��{`Yاpm}�e�l�|ɨVٺ��0]���_yO��~i�Ȟ�@��G����ei��:���
1�	�lM������:Bd��y8;�Ү�s�K���i��L��-w����,SߧR���to���_��C�TݪC��|�W'��7]�k�<b��J ~�ҵ
?$ݑ�dI��^X��8/j��ef+Yu�3�����|��Cf�$i�욃��u5��\l:PW���[�"�e! 	��h������H�r!^)q�t͕���s:><�~e��qX��.����G�����~����ݓ���N���I�"�?)T��Έ��NJ�Pi���*�?�rhSyA��� ��K$��H�X��G��� ���m���J#ϡPp������̋��Ʉ���iQʟ
,��Ǭ�r� �Nl+E�����is$ZOyS�*T��~����+�9��d�ge�3T���~N􍬀&!�Y!� �I��$LM���,u���m�$��(Ȅ�#A,
����B<3[E����Jl�t�}£2��`� �\,p��p��l����$��	B��j�K��h���,�m2��B�AB^g�#g&��*�6B�G�J1�<?Q���5�ɳ��8�)(�"��F�a\��xQ��㶰��u��� ����[���� �^��
�Ν��V���,>��8[���AN80���׶`&f���Z^\pY������n�2WCF�;��K$�=�����p�K����*���j�P+�&e*�<+���fkM�C\%�dt�A�n�[  E�`H���I�%Tٽ�'l]+��djl��W`~.�L�~Dŭ >\T��l�z6[0�2�b3�l��r�G�8h�KO�F"U��,C�e�R��F� N�l�.6w�(�a@�P+�y��1Uj�H)�4�/�%�O���a���]�s�4�C���q}M{M�ijo��D���f��	#"^�0�����i��J�6���K�����B�ȷ�GP7A�n������1��l�8�g��Hˎ�\��x!�������F����Zp2!��xZ�����8�%u' �w~��茹u�bp'���N��x���ϓ	SAI#aMXM���+�<8L�� �������G;;��v��T�n&Ok\	�riG��l�G	)�JL}8����<J��;�FP��]�����������\���6�wk4VS�S��DRu���ͽ�5��G�{V��&Ǹ_���Є�ŉ�l���G�i��?EtEM���L�ƶ�d�@M����]l��jo�"HY�#����P��'oN���;;�{��z�7O�{�C�f;��rC�DU/#N�鶼>���'�B!z�o0��H�����`G�����I>+*&�o���ڙ'��V��*9�f�]DP�fp�E�� m�����]�]�Z��RO\J�?�I��o�V�>���/�k7݆�ר�$W��jI��LF�(��c��y@�L �p�}�[Q�k�2³̹-s{TR��mz����Ĥ� r:\/1SY�wl+� %&�\�:7d��f��BLrl����W1Q$h�+��h�7a���j	
$�K�����c6�Ʋrާ!R�a��k�TFW��`��1[��it�.�����ҝ��P���Vs/Hu���e���d>�IJ���� j��- ~�K��wא���m	�� �o���LG?<�i=|�MG<N���~Ŷ��uEȕHoG��CO�]0�ų�k.��HC��j�Z����g=1�T�� �{��OLy�ntq�ƪe�Oo�(Q��ړ2���ɧ��
�hb�{��+�*H%4�
��G�(~�ݲ�jJ 	�8�;{~��Ӹ�q�v�;}Wn�Hx�ɽ�2�^� ��ڍY���
i��~�J4m��E����M�q�o��:-;�=�&3d-T�O�)L��RN����I��n\��{ۑ�F���Rd�O����͛Sh�%F���-#��o�L�t4:E��]VPzoи}���4�c̠!4�c���s;�܎=�c�e����Ν;��.B�     