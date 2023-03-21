.class public final Lcom/apk/cj;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewPreloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/bj;


# direct methods
.method public constructor <init>(Lcom/apk/qi;Lcom/apk/mi$do;Lcom/apk/mi$if;I)V
    .locals 1
    .param p1    # Lcom/apk/qi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mi$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/mi$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qi;",
            "Lcom/apk/mi$do<",
            "TT;>;",
            "Lcom/apk/mi$if<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/mi;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/apk/mi;-><init>(Lcom/apk/qi;Lcom/apk/mi$do;Lcom/apk/mi$if;I)V

    .line 3
    new-instance p1, Lcom/apk/bj;

    invoke-direct {p1, v0}, Lcom/apk/bj;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object p1, p0, Lcom/apk/cj;->do:Lcom/apk/bj;

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/cj;->do:Lcom/apk/bj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/bj;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
