.class public interface abstract Landroidx/databinding/ObservableList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ObservableList$OnListChangedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
.end method

.method public abstract removeOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
.end method
