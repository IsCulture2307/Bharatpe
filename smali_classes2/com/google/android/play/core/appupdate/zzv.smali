.class final Lcom/google/android/play/core/appupdate/zzv;
.super Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/appupdate/AppUpdateOptions;
    .locals 3

    iget-byte v0, p0, Lcom/google/android/play/core/appupdate/zzv;->c:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/android/play/core/appupdate/zzv;->c:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " appUpdateType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lcom/google/android/play/core/appupdate/zzv;->c:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " allowAssetPackDeletion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/google/android/play/core/appupdate/zzx;

    iget v1, p0, Lcom/google/android/play/core/appupdate/zzv;->a:I

    iget-boolean v2, p0, Lcom/google/android/play/core/appupdate/zzv;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/appupdate/zzx;-><init>(IZ)V

    return-object v0
.end method
