.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->b:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->b:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->b:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->e:Lcom/google/common/base/Predicate;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->e(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->b:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->e:Lcom/google/common/base/Predicate;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->f(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
