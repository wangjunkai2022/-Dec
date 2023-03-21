.class public Lcom/apk/q20;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/SwitchButton$new;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/biquge/ebook/app/widget/SwitchButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/q20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    .line 3
    invoke-interface {p1, p2}, Lcom/apk/k00;->strictfp(Z)V

    return-void
.end method
