.class final enum Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/concurrent/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkerRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum b:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum d:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final synthetic e:[Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->a:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    new-instance v1, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v2, "QUEUING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->b:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    new-instance v2, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v3, "QUEUED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    new-instance v3, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v4, "RUNNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->d:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->e:[Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1

    const-class v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1

    sget-object v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->e:[Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-virtual {v0}, [Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method
