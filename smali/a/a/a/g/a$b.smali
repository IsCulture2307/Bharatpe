.class public final enum La/a/a/g/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/g/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/g/a$b;

.field public static final enum b:La/a/a/g/a$b;

.field private static final synthetic c:[La/a/a/g/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, La/a/a/g/a$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/g/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/g/a$b;->a:La/a/a/g/a$b;

    new-instance v1, La/a/a/g/a$b;

    const-string v2, "BUSY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La/a/a/g/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/g/a$b;->b:La/a/a/g/a$b;

    filled-new-array {v0, v1}, [La/a/a/g/a$b;

    move-result-object v0

    sput-object v0, La/a/a/g/a$b;->c:[La/a/a/g/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/g/a$b;
    .locals 1

    const-class v0, La/a/a/g/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/g/a$b;

    return-object p0
.end method

.method public static values()[La/a/a/g/a$b;
    .locals 1

    sget-object v0, La/a/a/g/a$b;->c:[La/a/a/g/a$b;

    invoke-virtual {v0}, [La/a/a/g/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/g/a$b;

    return-object v0
.end method
