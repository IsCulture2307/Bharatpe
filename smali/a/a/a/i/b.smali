.class public La/a/a/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/i/a;->a(BI)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Ljava/nio/file/Path;[B)V
    .locals 9

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    aget-byte v0, p1, v5

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-array v0, v5, [Ljava/nio/file/LinkOption;

    const-class v1, Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {p0, v1, v0}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    :try_start_0
    aget-byte v0, p1, v5

    invoke-static {v0, v5}, La/a/a/i/a;->a(BI)Z

    move-result v0

    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    aget-byte v0, p1, v5

    invoke-static {v0, v4}, La/a/a/i/a;->a(BI)Z

    move-result v0

    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    aget-byte v0, p1, v5

    invoke-static {v0, v3}, La/a/a/i/a;->a(BI)Z

    move-result v0

    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    aget-byte p1, p1, v5

    invoke-static {p1, v2}, La/a/a/i/a;->a(BI)Z

    move-result p1

    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "nux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    aget-byte v0, p1, v3

    const/4 v1, 0x3

    if-nez v0, :cond_4

    aget-byte v0, p1, v1

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    aget-byte v6, p1, v1

    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v6, v5, v0, v7}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v6, p1, v3

    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v8, 0x7

    invoke-static {v6, v8, v0, v7}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v6, p1, v3

    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v8, 0x6

    invoke-static {v6, v8, v0, v7}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v6, p1, v3

    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v6, v2, v0, v7}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v2, p1, v3

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x4

    invoke-static {v2, v7, v0, v6}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v2, p1, v3

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v2, v1, v0, v6}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v1, p1, v3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v3, v0, v2}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v1, p1, v3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v4, v0, v2}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte p1, p1, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {p1, v5, v0, v1}, La/a/a/i/b;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method
