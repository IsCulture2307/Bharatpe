.class final Lcom/google/android/gms/common/api/internal/zabo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zabp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabo;->a:Lcom/google/android/gms/common/api/internal/zabp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabo;->a:Lcom/google/android/gms/common/api/internal/zabp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabp;->a:Lcom/google/android/gms/common/api/internal/zabq;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabq;->b:Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->d(Ljava/lang/String;)V

    return-void
.end method
