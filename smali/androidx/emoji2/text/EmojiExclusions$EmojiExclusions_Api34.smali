.class Landroidx/emoji2/text/EmojiExclusions$EmojiExclusions_Api34;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiExclusions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiExclusions_Api34"
.end annotation


# direct methods
.method public static a()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "[I>;"
        }
    .end annotation

    invoke-static {}, Landroidx/emoji2/text/EmojiExclusions$EmojiExclusions_Reflections;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
