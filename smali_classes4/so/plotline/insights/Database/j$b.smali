.class public Lso/plotline/insights/Database/j$b;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE events SET count = ?, last_used = ?, timestamps = ?, properties = ? WHERE eventName = ?"

    return-object v0
.end method
