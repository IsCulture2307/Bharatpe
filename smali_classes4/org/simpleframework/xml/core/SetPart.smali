.class Lorg/simpleframework/xml/core/SetPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/MethodPart;


# instance fields
.field public final a:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final b:[Ljava/lang/annotation/Annotation;

.field public final c:Ljava/lang/annotation/Annotation;

.field public final d:Lorg/simpleframework/xml/core/MethodType;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->a:Lorg/simpleframework/xml/util/ConcurrentCache;

    iget-object v0, p1, Lorg/simpleframework/xml/core/MethodName;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->e:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lorg/simpleframework/xml/core/MethodName;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->f:Ljava/lang/String;

    iget-object p1, p1, Lorg/simpleframework/xml/core/MethodName;->a:Lorg/simpleframework/xml/core/MethodType;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SetPart;->d:Lorg/simpleframework/xml/core/MethodType;

    iput-object p2, p0, Lorg/simpleframework/xml/core/SetPart;->c:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lorg/simpleframework/xml/core/SetPart;->b:[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v3

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-class v2, Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v2
.end method

.method public final a()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->c:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public final b()[Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/Class;

    :goto_1
    return-object v0
.end method

.method public final c()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->d:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->a:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/SetPart;->b:[Ljava/lang/annotation/Annotation;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
