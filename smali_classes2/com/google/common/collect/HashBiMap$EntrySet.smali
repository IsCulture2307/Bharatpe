.class final Lcom/google/common/collect/HashBiMap$EntrySet;
.super Lcom/google/common/collect/HashBiMap$View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap$View<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/HashBiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->b:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$View;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/HashBiMap$EntryForKey;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->b:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/HashBiMap$EntryForKey;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->b:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->b:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, v2, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
