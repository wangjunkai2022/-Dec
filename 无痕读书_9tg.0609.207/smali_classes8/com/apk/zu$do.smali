.class public Lcom/apk/zu$do;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/zu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/apk/lv;

.field public if:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    iput-object v0, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    .line 3
    iput-object p1, p0, Lcom/apk/zu$do;->if:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/zu$do;->catch(Ljava/lang/CharSequence;I)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object p1

    return-object p1
.end method

.method public case(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;)Lcom/lxj/xpopup/impl/ConfirmPopupView;
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/apk/zu$do;->goto(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;ZI)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object p1

    return-object p1
.end method

.method public catch(Ljava/lang/CharSequence;I)Lcom/lxj/xpopup/impl/LoadingPopupView;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/rv;->do:Lcom/apk/rv;

    .line 2
    iget-object v1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v0, v1, Lcom/apk/lv;->do:Lcom/apk/rv;

    .line 3
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 4
    iput-boolean v0, v1, Lcom/apk/lv;->continue:Z

    .line 5
    new-instance v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    iget-object v1, p0, Lcom/apk/zu$do;->if:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 7
    iget-object p1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-object v0
.end method

.method public class(Ljava/lang/Boolean;)Lcom/apk/zu$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    return-object p0
.end method

.method public const(Lcom/apk/yv;)Lcom/apk/zu$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    return-object p0
.end method

.method public do(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/apk/xv;)Lcom/lxj/xpopup/impl/BottomListPopupView;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/apk/zu$do;->if(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;II)Lcom/lxj/xpopup/impl/BottomListPopupView;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;I)Lcom/lxj/xpopup/impl/ConfirmPopupView;
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/apk/zu$do;->goto(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;ZI)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/lang/CharSequence;[Ljava/lang/String;[ILcom/apk/xv;)Lcom/lxj/xpopup/impl/BottomListPopupView;
    .locals 8

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/apk/zu$do;->if(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;II)Lcom/lxj/xpopup/impl/BottomListPopupView;

    move-result-object p1

    return-object p1
.end method

.method public goto(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;ZI)Lcom/lxj/xpopup/impl/ConfirmPopupView;
    .locals 0

    .line 1
    sget-object p3, Lcom/apk/rv;->do:Lcom/apk/rv;

    .line 2
    iget-object p4, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p3, p4, Lcom/apk/lv;->do:Lcom/apk/rv;

    .line 3
    sget-boolean p3, Lcom/apk/zu;->try:Z

    .line 4
    iput-boolean p3, p4, Lcom/apk/lv;->continue:Z

    .line 5
    new-instance p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;

    iget-object p4, p0, Lcom/apk/zu$do;->if:Landroid/content/Context;

    invoke-direct {p3, p4, p8}, Lcom/lxj/xpopup/impl/ConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 6
    iput-object p1, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 7
    iput-object p2, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 9
    iput-object p1, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    .line 10
    iput-object p1, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    .line 11
    iput-object p6, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->do:Lcom/apk/sv;

    .line 12
    iput-object p5, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->if:Lcom/apk/uv;

    .line 13
    iput-boolean p7, p3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->const:Z

    .line 14
    iget-object p1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, p3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-object p3
.end method

.method public if(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;II)Lcom/lxj/xpopup/impl/BottomListPopupView;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/rv;->if:Lcom/apk/rv;

    .line 2
    iget-object v1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v0, v1, Lcom/apk/lv;->do:Lcom/apk/rv;

    .line 3
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 4
    iput-boolean v0, v1, Lcom/apk/lv;->continue:Z

    .line 5
    new-instance v0, Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget-object v1, p0, Lcom/apk/zu$do;->if:Landroid/content/Context;

    invoke-direct {v0, v1, p6, p7}, Lcom/lxj/xpopup/impl/BottomListPopupView;-><init>(Landroid/content/Context;II)V

    .line 6
    iput-object p1, v0, Lcom/lxj/xpopup/impl/BottomListPopupView;->case:Ljava/lang/CharSequence;

    .line 7
    iput-object p2, v0, Lcom/lxj/xpopup/impl/BottomListPopupView;->else:[Ljava/lang/String;

    .line 8
    iput-object p3, v0, Lcom/lxj/xpopup/impl/BottomListPopupView;->goto:[I

    .line 9
    iput p4, v0, Lcom/lxj/xpopup/impl/BottomListPopupView;->break:I

    .line 10
    iput-object p5, v0, Lcom/lxj/xpopup/impl/BottomListPopupView;->this:Lcom/apk/xv;

    .line 11
    iget-object p1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-object v0
.end method

.method public new(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;)Lcom/lxj/xpopup/impl/CenterListPopupView;
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/apk/zu$do;->try(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;II)Lcom/lxj/xpopup/impl/CenterListPopupView;

    move-result-object p1

    return-object p1
.end method

.method public this(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/rv;->do:Lcom/apk/rv;

    .line 2
    iget-object v1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v0, v1, Lcom/apk/lv;->do:Lcom/apk/rv;

    .line 3
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 4
    iput-boolean v0, v1, Lcom/apk/lv;->continue:Z

    .line 5
    iput-object v1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-object p1
.end method

.method public try(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;II)Lcom/lxj/xpopup/impl/CenterListPopupView;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/rv;->do:Lcom/apk/rv;

    .line 2
    iget-object v1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v0, v1, Lcom/apk/lv;->do:Lcom/apk/rv;

    .line 3
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 4
    iput-boolean v0, v1, Lcom/apk/lv;->continue:Z

    .line 5
    new-instance v0, Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget-object v1, p0, Lcom/apk/zu$do;->if:Landroid/content/Context;

    invoke-direct {v0, v1, p6, p7}, Lcom/lxj/xpopup/impl/CenterListPopupView;-><init>(Landroid/content/Context;II)V

    .line 6
    iput-object p1, v0, Lcom/lxj/xpopup/impl/CenterListPopupView;->for:Ljava/lang/CharSequence;

    .line 7
    iput-object p2, v0, Lcom/lxj/xpopup/impl/CenterListPopupView;->new:[Ljava/lang/String;

    .line 8
    iput-object p3, v0, Lcom/lxj/xpopup/impl/CenterListPopupView;->try:[I

    .line 9
    iput p4, v0, Lcom/lxj/xpopup/impl/CenterListPopupView;->else:I

    .line 10
    iput-object p5, v0, Lcom/lxj/xpopup/impl/CenterListPopupView;->case:Lcom/apk/xv;

    .line 11
    iget-object p1, p0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-object v0
.end method
