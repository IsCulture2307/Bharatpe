.class final Lcom/google/android/gms/internal/measurement/zzfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjz;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzjz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfq;->a:Lcom/google/android/gms/internal/measurement/zzjz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zza$zzd;->zza(I)Lcom/google/android/gms/internal/measurement/zzfo$zza$zzd;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
