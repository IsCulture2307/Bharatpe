.class Lcom/google/common/collect/StandardTable$ColumnKeyIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColumnKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Iterator;

.field public e:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->d:Ljava/util/Iterator;

    sget-object p1, Lcom/google/common/collect/Iterators$ArrayItr;->e:Lcom/google/common/collect/UnmodifiableListIterator;

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->e:Ljava/util/Iterator;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->c:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    const/4 v0, 0x0

    return-object v0
.end method
