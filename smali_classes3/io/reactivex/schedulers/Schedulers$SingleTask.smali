.class final Lio/reactivex/schedulers/Schedulers$SingleTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Scheduler;",
        ">;"
    }
.end annotation


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/reactivex/schedulers/Schedulers$SingleHolder;->a:Lio/reactivex/internal/schedulers/SingleScheduler;

    return-object v0
.end method
