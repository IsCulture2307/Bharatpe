.class final Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final a:Lio/reactivex/Observer;

.field public final b:Lio/reactivex/subjects/ReplaySubject;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->a:Lio/reactivex/Observer;

    iput-object p2, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->b:Lio/reactivex/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->c:Z

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->b:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method

.method public final isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->c:Z

    return v0
.end method
