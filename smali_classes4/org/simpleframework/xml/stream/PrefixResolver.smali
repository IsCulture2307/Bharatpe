.class Lorg/simpleframework/xml/stream/PrefixResolver;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/NamespaceMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lorg/simpleframework/xml/stream/NamespaceMap;"
    }
.end annotation


# instance fields
.field public final a:Lorg/simpleframework/xml/stream/OutputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->a:Lorg/simpleframework/xml/stream/OutputNode;

    return-void
.end method


# virtual methods
.method public final R0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->a:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->c()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final m0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->a:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->c()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
