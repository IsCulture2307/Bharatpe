.class public final Lcom/google/android/gms/common/internal/zzv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms"

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzv;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzv;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/zzv;->c:Z

    return-void
.end method
