.class Lcom/journeyapps/barcodescanner/DecoderThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/DecoderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/journeyapps/barcodescanner/DecoderThread;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/DecoderThread;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    iget-boolean v2, v1, Lcom/journeyapps/barcodescanner/DecoderThread;->g:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/Handler;

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_preview_failed:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/DecoderThread;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    iget-boolean v2, v1, Lcom/journeyapps/barcodescanner/DecoderThread;->g:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/Handler;

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
