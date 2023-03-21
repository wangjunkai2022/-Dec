.class public final Lcom/apk/w0$if;
.super Ljava/lang/Object;
.source "WebInfoHelper.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic if:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/w0$if;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/apk/w0$if;->if:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
