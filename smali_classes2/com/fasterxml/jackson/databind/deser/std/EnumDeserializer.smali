.class public Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _caseInsensitive:Ljava/lang/Boolean;

.field private final _enumDefaultValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field protected _enumsByIndex:[Ljava/lang/Object;

.field protected final _lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

.field protected _lookupByToString:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;Ljava/lang/Boolean;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;)V

    .line 6
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    .line 7
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_caseInsensitive:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getRawEnums()[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getDefaultValue()Ljava/lang/Enum;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_caseInsensitive:Ljava/lang/Boolean;

    return-void
.end method

.method private final _deserializeAltString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    return-object p1

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_findCoercionFromEmptyString(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "empty String (\"\")"

    move-object v2, p0

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "blank String (all whitespace)"

    move-object v2, p0

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    :goto_0
    sget-object p3, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_caseInsensitive:Ljava/lang/Boolean;

    invoke-virtual {p4, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->findCaseInsensitive(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_7

    return-object p4

    :cond_5
    sget-object p4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p4

    if-nez p4, :cond_7

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_7

    const/16 v2, 0x39

    if-gt v0, v2, :cond_7

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "value looks like quoted Enum index, but `MapperFeature.ALLOW_COERCION_OF_SCALARS` prevents use"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v2, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    if-ltz v0, :cond_7

    iget-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    array-length v2, p4

    if-ge v0, v2, :cond_7

    aget-object p1, p4, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_7
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    if-eqz p4, :cond_8

    sget-object p4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    return-object p1

    :cond_8
    sget-object p4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->keys()Ljava/util/List;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "not one of the values accepted for Enum class: %s"

    invoke-virtual {p2, p4, p1, v0, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p0

    return-object p0
.end method

.method public static deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "[",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 4
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    .line 5
    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 6
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-object p0
.end method

.method public static deserializerForNoArgsCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object p0
.end method


# virtual methods
.method public _deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public _enumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public _fromInteger(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Integer:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow"

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdNumberValue(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v0, "Integer value ("

    const-string v1, ")"

    invoke-static {v0, p3, v1}, La/a/a/e/a/k;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    if-ltz p3, :cond_2

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    array-length v2, p1

    if-ge p3, v2, :cond_2

    aget-object p1, p1, p3

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    return-object p1

    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "index value outside legal index range [0..%s]"

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdNumberValue(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

.method public _fromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_getToStringLookup(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    :goto_0
    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eq v1, p3, :cond_2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p3

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_deserializeAltString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public _getToStringLookup(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByToString:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingToString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByToString:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->findFormatFeature(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_caseInsensitive:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->withResolved(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_fromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_fromInteger(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_fromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    return-object p1
.end method

.method public isCachable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method

.method public withResolved(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_caseInsensitive:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;Ljava/lang/Boolean;)V

    return-object v0
.end method
