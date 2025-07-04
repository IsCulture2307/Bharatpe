.class public final Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _freeBuffer:[Ljava/lang/Object;

.field private _head:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _size:I

.field private _tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final _copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p3, v1, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p4

    if-ne v2, p2, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Should have gotten "

    const-string p4, " entries, got "

    invoke-static {p3, p2, p4, v2}, Landroidx/compose/animation/b;->l(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public _reset()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    return-void
.end method

.method public appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/util/LinkedNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/util/LinkedNode;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->linkNext(Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    :goto_0
    array-length p1, p1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    const/16 v0, 0x4000

    if-ge p1, v0, :cond_1

    add-int/2addr p1, p1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40000

    if-ge p1, v0, :cond_2

    shr-int/lit8 v0, p1, 0x2

    add-int/2addr p1, v0

    :cond_2
    :goto_1
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public bufferedSize()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    return v0
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 8
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    .line 9
    aget-object v4, v2, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    .line 11
    aget-object v0, p1, v1

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    return-void
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    add-int/2addr v0, p2

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    return-object v1
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    add-int/2addr v0, p2

    .line 4
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    return-object p3
.end method

.method public initialCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public resetAndStart()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public resetAndStart([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    array-length v0, v0

    if-ge v0, p2, :cond_1

    :cond_0
    const/16 v0, 0xc

    .line 4
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    return-object p1
.end method
