.class final Lcom/postpe/app/appUseCases/home_v2/utility/UiExtensionsKt$showCameraPermissionBottomSheet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/postpe/app/appUseCases/home_v2/utility/UiExtensionsKt$showCameraPermissionBottomSheet$1;->c:Landroid/app/Activity;

    iput p2, p0, Lcom/postpe/app/appUseCases/home_v2/utility/UiExtensionsKt$showCameraPermissionBottomSheet$1;->d:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget v0, Lcom/postpe/app/appUseCases/home_v2/fragments/HomeV2Fragment;->v0:I

    iget-object v0, p0, Lcom/postpe/app/appUseCases/home_v2/utility/UiExtensionsKt$showCameraPermissionBottomSheet$1;->c:Landroid/app/Activity;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/postpe/app/appUseCases/home_v2/utility/UiExtensionsKt$showCameraPermissionBottomSheet$1;->d:I

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->l(Landroid/app/Activity;[Ljava/lang/String;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
