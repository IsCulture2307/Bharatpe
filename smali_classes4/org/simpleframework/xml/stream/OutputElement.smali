.class Lorg/simpleframework/xml/stream/OutputElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field public a:Lorg/simpleframework/xml/stream/OutputNodeMap;

.field public b:Lorg/simpleframework/xml/stream/NamespaceMap;

.field public c:Lorg/simpleframework/xml/stream/NodeWriter;

.field public d:Lorg/simpleframework/xml/stream/OutputNode;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lorg/simpleframework/xml/stream/Mode;


# virtual methods
.method public final c()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->b:Lorg/simpleframework/xml/stream/NamespaceMap;

    return-object v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()Lorg/simpleframework/xml/stream/Mode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->h:Lorg/simpleframework/xml/stream/Mode;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->e:Ljava/lang/String;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    :goto_0
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->h:Lorg/simpleframework/xml/stream/Mode;

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->d:Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->b:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputElement;->e:Ljava/lang/String;

    check-cast v0, Lorg/simpleframework/xml/stream/PrefixResolver;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/PrefixResolver;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->d:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->f:Ljava/lang/String;

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->c:Lorg/simpleframework/xml/stream/NodeWriter;

    iget-object v1, v0, Lorg/simpleframework/xml/stream/NodeWriter;->a:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->c()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    iget-object v3, v0, Lorg/simpleframework/xml/stream/NodeWriter;->c:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/stream/NodeWriter;->d(Lorg/simpleframework/xml/stream/OutputNode;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->c()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    if-eq v2, p0, :cond_1

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->b()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/stream/NodeWriter;->b(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeWriter;->b(Lorg/simpleframework/xml/stream/OutputNode;)V

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->b()Lorg/simpleframework/xml/stream/OutputNode;

    :cond_2
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->a:Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->c:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->a(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p1

    return-object p1
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->c:Lorg/simpleframework/xml/stream/NodeWriter;

    iget-object v0, v0, Lorg/simpleframework/xml/stream/NodeWriter;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/OutputElement;->h(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->a:Lorg/simpleframework/xml/stream/OutputNodeMap;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->c:Lorg/simpleframework/xml/stream/NodeWriter;

    iget-object v0, v0, Lorg/simpleframework/xml/stream/NodeWriter;->a:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->c()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->b()Lorg/simpleframework/xml/stream/OutputNode;

    return-void

    :cond_0
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "Cannot remove node"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->g:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
