.class final Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter$getRecentTransactionData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Unit;",
        "Ljava/util/List<",
        "+",
        "Lcom/postpe/app/appUseCases/contact/models/ContactViewBaseData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/postpe/app/appUseCases/contact/models/ContactViewBaseData;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "invoke",
        "(Lkotlin/Unit;)Ljava/util/List;"
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
.field public final synthetic c:Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter;


# direct methods
.method public constructor <init>(Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter$getRecentTransactionData$2;->c:Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Unit;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter$getRecentTransactionData$2;->c:Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter;

    iget-object v0, p1, Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter;->a(Lcom/postpe/app/appUseCases/contact/presenter/SingleContactPresenter;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
