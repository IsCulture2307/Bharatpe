.class public Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final h:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:D

.field public d:J

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->f:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->g:J

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->a:Ljava/lang/String;

    return-void
.end method

.method public static g()Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->a()V

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmv;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->a()V

    const-string v0, ""

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlv;->i:Lcom/google/android/gms/internal/mlkit_vision_common/zzlv;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->h:Ljava/util/HashMap;

    const-string v1, "detectorTaskWithResource#run"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->d:J

    return-void
.end method

.method public b(J)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->e:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const-wide/32 v11, 0x7fffffff

    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    sub-long v5, v3, v5

    const-wide/32 v15, 0xf4240

    cmp-long v5, v5, v15

    if-ltz v5, :cond_0

    iput v10, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    iput-wide v13, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->c:D

    iput-wide v7, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->d:J

    iput-wide v11, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->f:J

    const-wide/32 v5, -0x80000000

    iput-wide v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->g:J

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->e:J

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    iget-wide v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->c:D

    long-to-double v5, v1

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->c:D

    iget-wide v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->f:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->f:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->g:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->g:J

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    rem-int/lit8 v3, v3, 0x32

    if-nez v3, :cond_1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    iget-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    iget-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->c:D

    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v15, v4

    filled-new-array/range {v15 .. v20}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%s] cur=%dus, counts=%d, min=%dus, max=%dus, avg=%dus"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->a()V

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    rem-int/lit16 v1, v1, 0x1f4

    if-nez v1, :cond_2

    iput v10, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b:I

    iput-wide v13, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->c:D

    iput-wide v7, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->d:J

    iput-wide v11, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->f:J

    const-wide/32 v1, -0x80000000

    iput-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->g:J

    :cond_2
    return-void
.end method

.method public close()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->f(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call start()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(J)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->b(J)V

    return-void
.end method
