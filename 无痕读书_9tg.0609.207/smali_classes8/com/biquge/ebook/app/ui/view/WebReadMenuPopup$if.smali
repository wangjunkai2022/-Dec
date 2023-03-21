.class public Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;
.super Ljava/lang/Object;
.source "WebReadMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public do:I

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;->do:I

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;->if:Ljava/lang/String;

    return-void
.end method
