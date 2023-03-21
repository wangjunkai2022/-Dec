.class public Lcom/apk/u80;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/apk/s80;


# direct methods
.method public constructor <init>(Lcom/apk/s80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u80;->do:Lcom/apk/s80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/u80;->do:Lcom/apk/s80;

    .line 2
    iget-object v0, p1, Lcom/apk/s80;->goto:Landroid/view/View;

    .line 3
    invoke-virtual {p1, v0}, Lcom/apk/s80;->try(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/apk/u80;->do:Lcom/apk/s80;

    .line 5
    iget-object p1, p1, Lcom/apk/s80;->if:Lcom/apk/u90;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-interface {p1, v0}, Lcom/apk/u90;->a(Z)V

    :cond_0
    return-void
.end method
