.class Lcom/google/common/cache/LocalCache$Segment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/cache/LocalCache$LoadingValueReference;

.field public final synthetic d:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic e:Lcom/google/common/cache/LocalCache$Segment;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment$1;->e:Lcom/google/common/cache/LocalCache$Segment;

    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment$1;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/LocalCache$Segment$1;->b:I

    iput-object p4, p0, Lcom/google/common/cache/LocalCache$Segment$1;->c:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment$1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment$1;->c:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment$1;->e:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment$1;->a:Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/cache/LocalCache$Segment$1;->b:I

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment$1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/common/cache/LocalCache$Segment;->h(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/google/common/cache/LocalCache;->w:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown during refresh"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->b:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->o(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
