.class public final enum Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MODEL_FORMAT_INVALID:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum TFLITE_VERSION_INCOMPATIBLE:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const-string v2, "TFLITE_VERSION_INCOMPATIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->TFLITE_VERSION_INCOMPATIBLE:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const-string v3, "MODEL_FORMAT_INVALID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->MODEL_FORMAT_INVALID:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    filled-new-array {v0, v1, v2}, [Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->zza:[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->zza:[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    return-object v0
.end method
