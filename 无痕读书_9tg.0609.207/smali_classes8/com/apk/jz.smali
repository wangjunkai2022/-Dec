.class public Lcom/apk/jz;
.super Lcom/apk/bg;
.source "ComicRecyclerViewAdapter.java"


# instance fields
.field public final synthetic do:Lcom/manhua/adapter/ComicRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/jz;->do:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/jz;->do:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    .line 2
    iget-object p1, p1, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->for:Lcom/apk/l00;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/apk/f00$else;

    invoke-virtual {p1}, Lcom/apk/f00$else;->do()V

    :cond_0
    return-void
.end method
