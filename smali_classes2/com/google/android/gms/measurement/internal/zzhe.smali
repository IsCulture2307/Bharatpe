.class final Lcom/google/android/gms/measurement/internal/zzhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzo;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzgz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhe;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->b:Lcom/google/android/gms/measurement/internal/zzgz;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->b:Lcom/google/android/gms/measurement/internal/zzgz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgz;->d:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
