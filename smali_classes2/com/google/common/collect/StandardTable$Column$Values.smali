.class Lcom/google/common/collect/StandardTable$Column$Values;
.super Lcom/google/common/collect/Maps$Values;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->b:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/common/base/Predicates;->e(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object p1

    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->b:Lcom/google/common/collect/Maps$EntryFunction$2;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->d(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->b:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$Column;->d(Lcom/google/common/base/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->f(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->b:Lcom/google/common/collect/Maps$EntryFunction$2;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->d(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->b:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$Column;->d(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->f(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->h(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->b:Lcom/google/common/collect/Maps$EntryFunction$2;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->d(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->b:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$Column;->d(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method
