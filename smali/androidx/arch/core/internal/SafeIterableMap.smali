.class public Landroidx/arch/core/internal/SafeIterableMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/arch/core/internal/SafeIterableMap$Entry;,
        Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;,
        Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;,
        Landroidx/arch/core/internal/SafeIterableMap$DescendingIterator;,
        Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;,
        Landroidx/arch/core/internal/SafeIterableMap$ListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public a:Landroidx/arch/core/internal/SafeIterableMap$Entry;

.field public b:Landroidx/arch/core/internal/SafeIterableMap$Entry;

.field public final c:Ljava/util/WeakHashMap;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->c:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->d:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 2

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->a:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->c:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->b(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->b:Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, p1, p2}, Landroidx/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Landroidx/arch/core/internal/SafeIterableMap;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/arch/core/internal/SafeIterableMap;->d:I

    iget-object p1, p0, Landroidx/arch/core/internal/SafeIterableMap;->b:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-nez p1, :cond_1

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->a:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->b:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    iput-object v0, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->c:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object p1, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->d:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->b:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->b(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->d:I

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;

    invoke-virtual {v2, p1}, Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;->a(Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->d:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v1, :cond_2

    iget-object v2, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->c:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v2, v1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->c:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_1

    :cond_2
    iget-object v2, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->c:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v2, p0, Landroidx/arch/core/internal/SafeIterableMap;->a:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_1
    iget-object v2, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->c:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v2, :cond_3

    iput-object v1, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->d:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_2

    :cond_3
    iput-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->b:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_2
    iput-object v0, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->c:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->d:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object p1, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap$DescendingIterator;

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->b:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroidx/arch/core/internal/SafeIterableMap;->a:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->c:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/arch/core/internal/SafeIterableMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/arch/core/internal/SafeIterableMap;

    iget v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->d:I

    iget v3, p1, Landroidx/arch/core/internal/SafeIterableMap;->d:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    return v2

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->a:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroidx/arch/core/internal/SafeIterableMap;->b:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->c:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
