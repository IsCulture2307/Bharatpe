.class Lorg/simpleframework/xml/transform/DefaultMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field public a:Lorg/simpleframework/xml/transform/Matcher;

.field public b:Lorg/simpleframework/xml/transform/Matcher;

.field public c:Lorg/simpleframework/xml/transform/Matcher;

.field public d:Lorg/simpleframework/xml/transform/Matcher;


# virtual methods
.method public final a(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->b:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->a(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->d:Lorg/simpleframework/xml/transform/Matcher;

    check-cast v0, Lorg/simpleframework/xml/transform/ArrayMatcher;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/ArrayMatcher;->a(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->a:Lorg/simpleframework/xml/transform/Matcher;

    check-cast v0, Lorg/simpleframework/xml/transform/PrimitiveMatcher;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/PrimitiveMatcher;->a(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->c:Lorg/simpleframework/xml/transform/Matcher;

    check-cast v0, Lorg/simpleframework/xml/transform/PackageMatcher;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->a(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p1

    :goto_0
    return-object p1
.end method
