.class public abstract Lcom/android/volley/toolbox/JsonRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/String;


# instance fields
.field public final o:Ljava/lang/Object;

.field public final p:Lcom/android/volley/Response$Listener;

.field public final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "utf-8"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "application/json; charset=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/JsonRequest;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/voltmoney/voltsdk/b;Landroidx/camera/core/internal/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/JsonRequest;->o:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/volley/toolbox/JsonRequest;->p:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Lcom/android/volley/toolbox/JsonRequest;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->p:Lcom/android/volley/Response$Listener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g()[B
    .locals 4

    const-string v0, "utf-8"

    iget-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->q:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Volley"

    const-string v3, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v3, v0}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/volley/toolbox/JsonRequest;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final o()[B
    .locals 1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->g()[B

    move-result-object v0

    return-object v0
.end method
