# test
1
class BothHttpAndHttpsSchemaGenerator(OpenAPISchemaGenerator):
    def get_schema(self, request=None, public=False):
        schema = super().get_schema(request, public)
        schema.schemes = ["http", "https"]
        return schema
        
schema_view = get_schema_view(
    openapi.Info( ... ),
    public=True,
    generator_class=BothHttpAndHttpsSchemaGenerator, # Here
    permission_classes=(AllowAny,)
)



## Mongo DB

DATABASES = {
    'default': {
        'ENGINE': 'djongo',
        'NAME': 'local',
    }
}

