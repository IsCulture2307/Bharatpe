.class Lcom/google/common/collect/Sets$FilteredSortedSet;
.super Lcom/google/common/collect/Sets$FilteredSet;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$FilteredSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->b:Lcom/google/common/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    new-instance v0, Lcom/google/common/collect/Sets$FilteredSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->a:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    :goto_0
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->b:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    new-instance v0, Lcom/google/common/collect/Sets$FilteredSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->a:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    new-instance v0, Lcom/google/common/collect/Sets$FilteredSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->a:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method
