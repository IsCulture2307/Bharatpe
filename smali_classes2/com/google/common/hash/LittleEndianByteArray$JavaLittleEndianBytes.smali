.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "JavaLittleEndianBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;

.field public static final synthetic b:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;

    invoke-direct {v0}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;-><init>()V

    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->a:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->b:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->b:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method
