.class Lcom/google/common/collect/SingletonImmutableTable;
.super Lcom/google/common/collect/ImmutableTable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableTable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableTable;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/common/collect/SingletonImmutableTable;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/common/collect/SingletonImmutableTable;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableTable;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/SingletonImmutableTable;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->c:Ljava/lang/Object;

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SingletonImmutableTable;->column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public final columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->c:Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final createCellSet()Lcom/google/common/collect/ImmutableSet;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableTable;->a:Ljava/lang/Object;

    .line 2
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic createCellSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableTable;->createCellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final createSerializedForm()Lcom/google/common/collect/ImmutableTable$SerializedForm;
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/google/common/collect/ImmutableTable$SerializedForm;->a(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$SerializedForm;

    move-result-object v0

    return-object v0
.end method

.method public final createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->c:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableTable;->createValues()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public final rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->c:Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
