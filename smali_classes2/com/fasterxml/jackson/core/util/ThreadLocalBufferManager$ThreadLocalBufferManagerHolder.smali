.class final Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager$ThreadLocalBufferManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadLocalBufferManagerHolder"
.end annotation


# static fields
.field static final manager:Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager$ThreadLocalBufferManagerHolder;->manager:Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;

    return-void
.end method
