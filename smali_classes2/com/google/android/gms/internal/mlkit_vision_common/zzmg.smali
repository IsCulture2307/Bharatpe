.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmg;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmg;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/common/internal/LibraryVersion;->c:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/LibraryVersion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
