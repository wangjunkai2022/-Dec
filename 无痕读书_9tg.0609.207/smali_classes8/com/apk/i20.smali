.class public Lcom/apk/i20;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i20;->if:Lcom/manhua/ui/widget/ComicReadMenuView;

    iput-boolean p2, p0, Lcom/apk/i20;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/apk/i20;->if:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    .line 3
    iget-object p1, p1, Lcom/apk/f00;->try:Ljava/lang/String;

    :goto_0
    move-object v4, p1

    .line 4
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object p1, p0, Lcom/apk/i20;->if:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 5
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    .line 6
    invoke-static {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->else(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/apk/i20;->if:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-static {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->if(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-instance v6, Lcom/apk/i20$do;

    invoke-direct {v6, p0}, Lcom/apk/i20$do;-><init>(Lcom/apk/i20;)V

    invoke-virtual/range {v0 .. v6}, Lcom/apk/o0;->if(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V

    return-void
.end method
