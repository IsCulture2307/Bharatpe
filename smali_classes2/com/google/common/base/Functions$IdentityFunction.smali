.class final enum Lcom/google/common/base/Functions$IdentityFunction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentityFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/Functions$IdentityFunction;",
        ">;",
        "Lcom/google/common/base/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/google/common/base/Functions$IdentityFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/base/Functions$IdentityFunction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/google/common/base/Functions$IdentityFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Functions$IdentityFunction;->a:[Lcom/google/common/base/Functions$IdentityFunction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Functions$IdentityFunction;
    .locals 1

    const-class v0, Lcom/google/common/base/Functions$IdentityFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Functions$IdentityFunction;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/Functions$IdentityFunction;
    .locals 1

    sget-object v0, Lcom/google/common/base/Functions$IdentityFunction;->a:[Lcom/google/common/base/Functions$IdentityFunction;

    invoke-virtual {v0}, [Lcom/google/common/base/Functions$IdentityFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Functions$IdentityFunction;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Functions.identity()"

    return-object v0
.end method
