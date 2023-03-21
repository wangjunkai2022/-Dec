.class public final Lcom/apk/iu;
.super Ljava/lang/Object;
.source "ImmersionBar.java"

# interfaces
.implements Lcom/apk/ju;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field public break:Z

.field public case:Landroid/view/ViewGroup;

.field public catch:Z

.field public class:Lcom/apk/cu;

.field public const:Lcom/apk/au;

.field public default:I

.field public do:Landroid/app/Activity;

.field public else:Landroid/view/ViewGroup;

.field public final:I

.field public for:Landroid/app/Fragment;

.field public goto:Lcom/apk/iu;

.field public if:Landroidx/fragment/app/Fragment;

.field public import:I

.field public native:Z

.field public new:Landroid/app/Dialog;

.field public public:Z

.field public return:Z

.field public static:I

.field public super:I

.field public switch:I

.field public this:Z

.field public throw:I

.field public throws:I

.field public try:Landroid/view/Window;

.field public while:Lcom/apk/gu;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/iu;->this:Z

    .line 3
    iput-boolean v0, p0, Lcom/apk/iu;->break:Z

    .line 4
    iput-boolean v0, p0, Lcom/apk/iu;->catch:Z

    .line 5
    iput v0, p0, Lcom/apk/iu;->final:I

    .line 6
    iput v0, p0, Lcom/apk/iu;->super:I

    .line 7
    iput v0, p0, Lcom/apk/iu;->throw:I

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput v0, p0, Lcom/apk/iu;->import:I

    .line 11
    iput-boolean v0, p0, Lcom/apk/iu;->native:Z

    .line 12
    iput-boolean v0, p0, Lcom/apk/iu;->public:Z

    .line 13
    iput-boolean v0, p0, Lcom/apk/iu;->return:Z

    .line 14
    iput v0, p0, Lcom/apk/iu;->static:I

    iput v0, p0, Lcom/apk/iu;->switch:I

    iput v0, p0, Lcom/apk/iu;->throws:I

    iput v0, p0, Lcom/apk/iu;->default:I

    .line 15
    iput-object p1, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/iu;->goto(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/DialogFragment;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/apk/iu;->this:Z

    .line 78
    iput-boolean v0, p0, Lcom/apk/iu;->break:Z

    .line 79
    iput-boolean v0, p0, Lcom/apk/iu;->catch:Z

    .line 80
    iput v0, p0, Lcom/apk/iu;->final:I

    .line 81
    iput v0, p0, Lcom/apk/iu;->super:I

    .line 82
    iput v0, p0, Lcom/apk/iu;->throw:I

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    iput v0, p0, Lcom/apk/iu;->import:I

    .line 86
    iput-boolean v0, p0, Lcom/apk/iu;->native:Z

    .line 87
    iput-boolean v0, p0, Lcom/apk/iu;->public:Z

    .line 88
    iput-boolean v0, p0, Lcom/apk/iu;->return:Z

    .line 89
    iput v0, p0, Lcom/apk/iu;->static:I

    iput v0, p0, Lcom/apk/iu;->switch:I

    iput v0, p0, Lcom/apk/iu;->throws:I

    iput v0, p0, Lcom/apk/iu;->default:I

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/apk/iu;->catch:Z

    .line 91
    iput-boolean v0, p0, Lcom/apk/iu;->break:Z

    .line 92
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    .line 93
    iput-object p1, p0, Lcom/apk/iu;->for:Landroid/app/Fragment;

    .line 94
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/iu;->new:Landroid/app/Dialog;

    .line 95
    invoke-virtual {p0}, Lcom/apk/iu;->for()V

    .line 96
    iget-object p1, p0, Lcom/apk/iu;->new:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/iu;->goto(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/apk/iu;->this:Z

    .line 38
    iput-boolean v0, p0, Lcom/apk/iu;->break:Z

    .line 39
    iput-boolean v0, p0, Lcom/apk/iu;->catch:Z

    .line 40
    iput v0, p0, Lcom/apk/iu;->final:I

    .line 41
    iput v0, p0, Lcom/apk/iu;->super:I

    .line 42
    iput v0, p0, Lcom/apk/iu;->throw:I

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    iput v0, p0, Lcom/apk/iu;->import:I

    .line 46
    iput-boolean v0, p0, Lcom/apk/iu;->native:Z

    .line 47
    iput-boolean v0, p0, Lcom/apk/iu;->public:Z

    .line 48
    iput-boolean v0, p0, Lcom/apk/iu;->return:Z

    .line 49
    iput v0, p0, Lcom/apk/iu;->static:I

    iput v0, p0, Lcom/apk/iu;->switch:I

    iput v0, p0, Lcom/apk/iu;->throws:I

    iput v0, p0, Lcom/apk/iu;->default:I

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/apk/iu;->this:Z

    .line 51
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    .line 52
    iput-object p1, p0, Lcom/apk/iu;->for:Landroid/app/Fragment;

    .line 53
    invoke-virtual {p0}, Lcom/apk/iu;->for()V

    .line 54
    iget-object p1, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/iu;->goto(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/apk/iu;->this:Z

    .line 57
    iput-boolean v0, p0, Lcom/apk/iu;->break:Z

    .line 58
    iput-boolean v0, p0, Lcom/apk/iu;->catch:Z

    .line 59
    iput v0, p0, Lcom/apk/iu;->final:I

    .line 60
    iput v0, p0, Lcom/apk/iu;->super:I

    .line 61
    iput v0, p0, Lcom/apk/iu;->throw:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    iput v0, p0, Lcom/apk/iu;->import:I

    .line 65
    iput-boolean v0, p0, Lcom/apk/iu;->native:Z

    .line 66
    iput-boolean v0, p0, Lcom/apk/iu;->public:Z

    .line 67
    iput-boolean v0, p0, Lcom/apk/iu;->return:Z

    .line 68
    iput v0, p0, Lcom/apk/iu;->static:I

    iput v0, p0, Lcom/apk/iu;->switch:I

    iput v0, p0, Lcom/apk/iu;->throws:I

    iput v0, p0, Lcom/apk/iu;->default:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/apk/iu;->catch:Z

    .line 70
    iput-boolean v0, p0, Lcom/apk/iu;->break:Z

    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    .line 72
    iput-object p1, p0, Lcom/apk/iu;->if:Landroidx/fragment/app/Fragment;

    .line 73
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/iu;->new:Landroid/app/Dialog;

    .line 74
    invoke-virtual {p0}, Lcom/apk/iu;->for()V

    .line 75
    iget-object p1, p0, Lcom/apk/iu;->new:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/iu;->goto(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/apk/iu;->this:Z

    .line 19
    iput-boolean v0, p0, Lcom/apk/iu;->break:Z

    .line 20
    iput-boolean v0, p0, Lcom/apk/iu;->catch:Z

    .line 21
    iput v0, p0, Lcom/apk/iu;->final:I

    .line 22
    iput v0, p0, Lcom/apk/iu;->super:I

    .line 23
    iput v0, p0, Lcom/apk/iu;->throw:I

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    iput v0, p0, Lcom/apk/iu;->import:I

    .line 27
    iput-boolean v0, p0, Lcom/apk/iu;->native:Z

    .line 28
    iput-boolean v0, p0, Lcom/apk/iu;->public:Z

    .line 29
    iput-boolean v0, p0, Lcom/apk/iu;->return:Z

    .line 30
    iput v0, p0, Lcom/apk/iu;->static:I

    iput v0, p0, Lcom/apk/iu;->switch:I

    iput v0, p0, Lcom/apk/iu;->throws:I

    iput v0, p0, Lcom/apk/iu;->default:I

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/apk/iu;->this:Z

    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    .line 33
    iput-object p1, p0, Lcom/apk/iu;->if:Landroidx/fragment/app/Fragment;

    .line 34
    invoke-virtual {p0}, Lcom/apk/iu;->for()V

    .line 35
    iget-object p1, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/iu;->goto(Landroid/view/Window;)V

    return-void
.end method

.method public static case(Landroid/app/Activity;)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_mainBuiltInDisplayCutout"

    const-string v1, "string"

    const-string v2, "android"

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static if(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 3
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 5
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    instance-of v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v5, :cond_2

    .line 7
    invoke-static {v4}, Lcom/apk/iu;->if(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static super(Landroid/app/Activity;)Lcom/apk/iu;
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/apk/ru$if;->do:Lcom/apk/ru;

    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/apk/ru;->do:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    instance-of v2, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_2

    .line 4
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/apk/tu;

    if-nez v3, :cond_0

    .line 6
    iget-object v3, v0, Lcom/apk/ru;->new:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/tu;

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Lcom/apk/tu;

    invoke-direct {v3}, Lcom/apk/tu;-><init>()V

    .line 8
    iget-object v4, v0, Lcom/apk/ru;->new:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 10
    iget-object v0, v0, Lcom/apk/ru;->if:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    :cond_0
    iget-object v0, v3, Lcom/apk/tu;->do:Lcom/apk/ku;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lcom/apk/ku;

    invoke-direct {v0, p0}, Lcom/apk/ku;-><init>(Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/apk/tu;->do:Lcom/apk/ku;

    .line 13
    :cond_1
    iget-object p0, v3, Lcom/apk/tu;->do:Lcom/apk/ku;

    .line 14
    iget-object p0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/apk/qu;

    if-nez v3, :cond_3

    .line 17
    iget-object v3, v0, Lcom/apk/ru;->for:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/qu;

    if-nez v3, :cond_3

    .line 18
    new-instance v3, Lcom/apk/qu;

    invoke-direct {v3}, Lcom/apk/qu;-><init>()V

    .line 19
    iget-object v4, v0, Lcom/apk/ru;->for:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 21
    iget-object v0, v0, Lcom/apk/ru;->if:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    :cond_3
    iget-object v0, v3, Lcom/apk/qu;->do:Lcom/apk/ku;

    if-nez v0, :cond_4

    .line 23
    new-instance v0, Lcom/apk/ku;

    invoke-direct {v0, p0}, Lcom/apk/ku;-><init>(Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/apk/qu;->do:Lcom/apk/ku;

    .line 24
    :cond_4
    iget-object p0, v3, Lcom/apk/qu;->do:Lcom/apk/ku;

    .line 25
    iget-object p0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    :goto_0
    return-object p0

    .line 26
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "activity is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 p0, 0x0

    .line 27
    throw p0
.end method

.method public static this()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/mu;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/apk/mu;->k()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static try(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/au;

    invoke-direct {v0, p0}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    .line 2
    iget p0, v0, Lcom/apk/au;->do:I

    return p0
.end method


# virtual methods
.method public final break()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/apk/iu;->final()V

    .line 2
    iget-object v0, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/iu;->if(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/apk/iu;->class(IIII)V

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v0, v0, Lcom/apk/cu;->static:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/apk/iu;->import:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 6
    iget v0, v0, Lcom/apk/au;->do:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v2, v2, Lcom/apk/cu;->package:Z

    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 9
    iget v0, v0, Lcom/apk/au;->do:I

    .line 10
    iget v2, p0, Lcom/apk/iu;->throw:I

    add-int/2addr v0, v2

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 12
    iget-boolean v3, v2, Lcom/apk/au;->for:Z

    if-eqz v3, :cond_7

    .line 13
    iget-object v3, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v4, v3, Lcom/apk/cu;->continue:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v3, Lcom/apk/cu;->strictfp:Z

    if-eqz v4, :cond_7

    .line 14
    iget-boolean v3, v3, Lcom/apk/cu;->goto:Z

    if-nez v3, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/apk/au;->for()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 17
    iget v2, v2, Lcom/apk/au;->new:I

    move v3, v2

    const/4 v2, 0x0

    goto :goto_2

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 19
    iget v2, v2, Lcom/apk/au;->try:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 20
    :goto_2
    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v4, v4, Lcom/apk/cu;->this:Z

    if-eqz v4, :cond_6

    .line 21
    iget-object v4, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    invoke-virtual {v4}, Lcom/apk/au;->for()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 22
    :cond_6
    iget-object v4, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    invoke-virtual {v4}, Lcom/apk/au;->for()Z

    move-result v4

    if-nez v4, :cond_8

    .line 23
    iget-object v2, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 24
    iget v2, v2, Lcom/apk/au;->try:I

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    .line 25
    :cond_8
    :goto_4
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/apk/iu;->class(IIII)V

    .line 26
    :goto_5
    iget-boolean v0, p0, Lcom/apk/iu;->this:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    iget-object v0, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    sget v1, Lcom/apk/eu;->if:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v2, v1, Lcom/apk/cu;->continue:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    iget-boolean v1, v1, Lcom/apk/cu;->strictfp:Z

    if-eqz v1, :cond_c

    if-eqz v0, :cond_f

    .line 29
    invoke-static {}, Lcom/apk/fu;->do()Lcom/apk/fu;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 30
    iget-object v1, v0, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    .line 32
    :cond_9
    iget-object v1, v0, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 33
    iget-object v0, v0, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_a
    sget-object v0, Lcom/apk/fu$if;->do:Lcom/apk/fu;

    .line 35
    iget-object v1, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/apk/fu;->if:Landroid/app/Application;

    if-eqz v1, :cond_f

    .line 37
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/apk/fu;->for:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "navigationbar_is_min"

    .line 38
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 39
    iget-object v2, v0, Lcom/apk/fu;->if:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 40
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/apk/fu;->for:Ljava/lang/Boolean;

    goto :goto_7

    .line 41
    :cond_b
    throw v3

    .line 42
    :cond_c
    invoke-static {}, Lcom/apk/fu;->do()Lcom/apk/fu;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 43
    iget-object v1, v1, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    if-nez v1, :cond_d

    goto :goto_6

    .line 44
    :cond_d
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_6
    const/16 v1, 0x8

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 46
    :cond_e
    throw v3

    :cond_f
    :goto_7
    return-void
.end method

.method public catch()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/high16 v4, 0x8000000

    const/high16 v5, 0x4000000

    if-nez v0, :cond_7

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/apk/iu;->native:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v6, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/apk/iu;->native:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v6, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v6

    iput v6, v0, Lcom/apk/cu;->for:I

    :cond_1
    const/16 v0, 0x500

    .line 8
    iget-object v6, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v7, v6, Lcom/apk/cu;->goto:Z

    if-eqz v7, :cond_2

    iget-boolean v6, v6, Lcom/apk/cu;->continue:Z

    if-eqz v6, :cond_2

    const/16 v0, 0x700

    .line 9
    :cond_2
    iget-object v6, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v6, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    iget-object v5, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 11
    iget-boolean v5, v5, Lcom/apk/au;->for:Z

    if-eqz v5, :cond_3

    .line 12
    iget-object v5, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v5, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 13
    :cond_3
    iget-object v4, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 14
    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v5, v4, Lcom/apk/cu;->while:Z

    if-eqz v5, :cond_4

    .line 15
    iget-object v5, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    iget v6, v4, Lcom/apk/cu;->do:I

    iget v7, v4, Lcom/apk/cu;->import:I

    iget v4, v4, Lcom/apk/cu;->new:F

    invoke-static {v6, v7, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object v5, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    iget v6, v4, Lcom/apk/cu;->do:I

    iget v4, v4, Lcom/apk/cu;->new:F

    invoke-static {v6, v2, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v5, v4, Lcom/apk/cu;->continue:Z

    if-eqz v5, :cond_5

    .line 18
    iget-object v5, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    iget v6, v4, Lcom/apk/cu;->if:I

    iget v7, v4, Lcom/apk/cu;->native:I

    iget v4, v4, Lcom/apk/cu;->case:F

    invoke-static {v6, v7, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v5, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    iget v4, v4, Lcom/apk/cu;->for:I

    invoke-virtual {v5, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 20
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_6

    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v4, v4, Lcom/apk/cu;->catch:Z

    if-eqz v4, :cond_6

    or-int/lit16 v0, v0, 0x2000

    .line 21
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_12

    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v4, v4, Lcom/apk/cu;->class:Z

    if-eqz v4, :cond_12

    or-int/lit8 v0, v0, 0x10

    goto/16 :goto_6

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 23
    iget-object v0, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    sget v5, Lcom/apk/eu;->do:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, -0x1

    if-nez v0, :cond_8

    .line 24
    new-instance v0, Landroid/view/View;

    iget-object v6, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 26
    iget v7, v7, Lcom/apk/au;->do:I

    .line 27
    invoke-direct {v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x30

    .line 28
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    sget v6, Lcom/apk/eu;->do:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 32
    iget-object v6, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    :cond_8
    iget-object v6, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v7, v6, Lcom/apk/cu;->while:Z

    if-eqz v7, :cond_9

    .line 34
    iget v7, v6, Lcom/apk/cu;->do:I

    iget v8, v6, Lcom/apk/cu;->import:I

    iget v6, v6, Lcom/apk/cu;->new:F

    invoke-static {v7, v8, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 35
    :cond_9
    iget v7, v6, Lcom/apk/cu;->do:I

    iget v6, v6, Lcom/apk/cu;->new:F

    invoke-static {v7, v2, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    :goto_2
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 37
    iget-boolean v0, v0, Lcom/apk/au;->for:Z

    if-nez v0, :cond_a

    .line 38
    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v6, v0, Lcom/apk/cu;->continue:Z

    if-eqz v6, :cond_b

    iget-boolean v0, v0, Lcom/apk/cu;->strictfp:Z

    if-eqz v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 41
    :cond_b
    iget-object v0, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 42
    :goto_3
    iget v0, p0, Lcom/apk/iu;->final:I

    if-nez v0, :cond_c

    .line 43
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 44
    iget v0, v0, Lcom/apk/au;->new:I

    .line 45
    iput v0, p0, Lcom/apk/iu;->final:I

    .line 46
    :cond_c
    iget v0, p0, Lcom/apk/iu;->super:I

    if-nez v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 48
    iget v0, v0, Lcom/apk/au;->try:I

    .line 49
    iput v0, p0, Lcom/apk/iu;->super:I

    .line 50
    :cond_d
    iget-object v0, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    sget v4, Lcom/apk/eu;->if:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 51
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    sget v4, Lcom/apk/eu;->if:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 53
    iget-object v4, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_e
    iget-object v4, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    invoke-virtual {v4}, Lcom/apk/au;->for()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 55
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 56
    iget v6, v6, Lcom/apk/au;->new:I

    .line 57
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x50

    .line 58
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 59
    :cond_f
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 60
    iget v6, v6, Lcom/apk/au;->try:I

    .line 61
    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x800005

    .line 62
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v5, v4, Lcom/apk/cu;->if:I

    iget v6, v4, Lcom/apk/cu;->native:I

    iget v4, v4, Lcom/apk/cu;->case:F

    invoke-static {v5, v6, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v5, v4, Lcom/apk/cu;->continue:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v4, Lcom/apk/cu;->strictfp:Z

    if-eqz v5, :cond_10

    iget-boolean v4, v4, Lcom/apk/cu;->this:Z

    if-nez v4, :cond_10

    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 67
    :cond_10
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_5
    const/16 v0, 0x100

    .line 68
    :cond_12
    :goto_6
    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v4, v4, Lcom/apk/cu;->break:Lcom/apk/bu;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_16

    if-eq v4, v1, :cond_15

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    goto :goto_7

    :cond_13
    or-int/lit8 v0, v0, 0x0

    goto :goto_7

    :cond_14
    or-int/lit16 v0, v0, 0x206

    goto :goto_7

    :cond_15
    or-int/lit16 v0, v0, 0x202

    goto :goto_7

    :cond_16
    or-int/lit16 v0, v0, 0x404

    :goto_7
    or-int/lit16 v0, v0, 0x1000

    .line 69
    iget-object v4, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 70
    invoke-static {}, Lcom/apk/mu;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 71
    iget-object v0, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    iget-object v4, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v4, v4, Lcom/apk/cu;->catch:Z

    const-string v5, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-static {v0, v5, v4}, Lcom/apk/su;->do(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v4, v0, Lcom/apk/cu;->continue:Z

    if-eqz v4, :cond_17

    .line 73
    iget-object v4, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    iget-boolean v0, v0, Lcom/apk/cu;->class:Z

    const-string v5, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE"

    invoke-static {v4, v5, v0}, Lcom/apk/su;->do(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 74
    :cond_17
    invoke-static {}, Lcom/apk/mu;->k()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 75
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v4, v0, Lcom/apk/cu;->extends:I

    if-eqz v4, :cond_1b

    .line 76
    iget-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    .line 77
    sget-object v5, Lcom/apk/su;->do:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_18

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_8

    :catch_1
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_8

    :cond_18
    const/16 v5, 0x32

    and-int/lit16 v6, v4, 0xff

    const v7, 0xff00

    and-int/2addr v7, v4

    shr-int/lit8 v3, v7, 0x8

    const/high16 v7, 0xff0000

    and-int/2addr v7, v4

    shr-int/lit8 v7, v7, 0x10

    mul-int/lit8 v7, v7, 0x26

    mul-int/lit8 v3, v3, 0x4b

    add-int/2addr v3, v7

    mul-int/lit8 v6, v6, 0xf

    add-int/2addr v6, v3

    shr-int/lit8 v3, v6, 0x7

    if-ge v3, v5, :cond_19

    const/4 v2, 0x1

    .line 81
    :cond_19
    sget-object v3, Lcom/apk/su;->for:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1a

    .line 82
    invoke-static {v0, v2, v2}, Lcom/apk/su;->for(Landroid/app/Activity;ZZ)V

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 84
    :try_start_1
    invoke-static {v0, v4}, Lcom/apk/su;->if(Landroid/view/Window;I)V

    .line 85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_1c

    .line 86
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/apk/su;->new(Landroid/view/View;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 88
    :cond_1a
    invoke-static {v0, v2, v1}, Lcom/apk/su;->for(Landroid/app/Activity;ZZ)V

    goto :goto_8

    .line 89
    :cond_1b
    iget-object v2, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    iget-boolean v0, v0, Lcom/apk/cu;->catch:Z

    .line 90
    invoke-static {v2, v0, v1}, Lcom/apk/su;->for(Landroid/app/Activity;ZZ)V

    .line 91
    :cond_1c
    :goto_8
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v0, v0, Lcom/apk/cu;->transient:Lcom/apk/pu;

    if-eqz v0, :cond_20

    .line 92
    invoke-static {}, Lcom/apk/lu;->do()Lcom/apk/lu;

    move-result-object v0

    iget-object v2, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 93
    iput-object v2, v0, Lcom/apk/lu;->do:Landroid/app/Application;

    if-eqz v2, :cond_20

    .line 94
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/apk/lu;->if:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x0

    .line 95
    invoke-static {}, Lcom/apk/mu;->l()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v2, "force_fsg_nav_bar"

    .line 96
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_9

    .line 97
    :cond_1d
    invoke-static {}, Lcom/apk/mu;->i()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 98
    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v2

    const-string v3, "navigationbar_is_min"

    if-nez v2, :cond_1e

    .line 99
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_9

    .line 100
    :cond_1e
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_1f
    :goto_9
    if-eqz v2, :cond_20

    .line 101
    iget-object v3, v0, Lcom/apk/lu;->do:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/apk/lu;->if:Ljava/lang/Boolean;

    :cond_20
    return-void
.end method

.method public final class(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/iu;->else:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/apk/iu;->static:I

    .line 4
    iput p2, p0, Lcom/apk/iu;->switch:I

    .line 5
    iput p3, p0, Lcom/apk/iu;->throws:I

    .line 6
    iput p4, p0, Lcom/apk/iu;->default:I

    return-void
.end method

.method public const(ZF)Lcom/apk/iu;
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput-boolean p1, v0, Lcom/apk/cu;->catch:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/iu;->this()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput p2, p1, Lcom/apk/cu;->new:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget p2, p1, Lcom/apk/cu;->finally:I

    iput p2, p1, Lcom/apk/cu;->extends:I

    .line 5
    iget p2, p1, Lcom/apk/cu;->try:F

    iput p2, p1, Lcom/apk/cu;->new:F

    :goto_0
    return-object p0
.end method

.method public do(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    sget v1, Lcom/apk/eu;->if:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2
    new-instance v1, Lcom/apk/au;

    iget-object v2, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 3
    iget-object v1, p0, Lcom/apk/iu;->else:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/apk/iu;->else:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_4

    .line 5
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/iu;->if(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p0, Lcom/apk/iu;->final:I

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 9
    iget p1, p1, Lcom/apk/au;->new:I

    .line 10
    iput p1, p0, Lcom/apk/iu;->final:I

    .line 11
    :cond_2
    iget p1, p0, Lcom/apk/iu;->super:I

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 13
    iget p1, p1, Lcom/apk/au;->try:I

    .line 14
    iput p1, p0, Lcom/apk/iu;->super:I

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean p1, p1, Lcom/apk/cu;->this:Z

    if-nez p1, :cond_7

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    iget-object v1, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    invoke-virtual {v1}, Lcom/apk/au;->for()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x50

    .line 18
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    iget v1, p0, Lcom/apk/iu;->final:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 20
    iget-object v2, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v2, v2, Lcom/apk/cu;->goto:Z

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const v1, 0x800005

    .line 21
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    iget v1, p0, Lcom/apk/iu;->super:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 23
    iget-object v2, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v2, v2, Lcom/apk/cu;->goto:Z

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    move v2, v1

    const/4 v1, 0x0

    .line 24
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/apk/iu;->else:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/apk/iu;->class(IIII)V

    :cond_8
    return-void
.end method

.method public else()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v1, v0, Lcom/apk/cu;->interface:Z

    if-eqz v1, :cond_13

    .line 2
    iget-boolean v1, v0, Lcom/apk/cu;->const:Z

    const v2, -0x454546

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/apk/cu;->do:I

    if-eqz v0, :cond_1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v1, v1, Lcom/apk/cu;->super:F

    invoke-virtual {p0, v0, v1}, Lcom/apk/iu;->const(ZF)Lcom/apk/iu;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v1, v0, Lcom/apk/cu;->final:Z

    if-eqz v1, :cond_6

    iget v0, v0, Lcom/apk/cu;->if:I

    if-eqz v0, :cond_6

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v2, v1, Lcom/apk/cu;->throw:F

    .line 6
    iput-boolean v0, v1, Lcom/apk/cu;->class:Z

    if-eqz v0, :cond_5

    .line 7
    invoke-static {}, Lcom/apk/mu;->m()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput v2, v0, Lcom/apk/cu;->case:F

    goto :goto_4

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v1, v0, Lcom/apk/cu;->else:F

    iput v1, v0, Lcom/apk/cu;->case:F

    .line 10
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/apk/iu;->final()V

    .line 11
    iget-object v0, p0, Lcom/apk/iu;->goto:Lcom/apk/iu;

    if-eqz v0, :cond_8

    .line 12
    iget-boolean v1, p0, Lcom/apk/iu;->this:Z

    if-eqz v1, :cond_7

    .line 13
    iget-object v1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 14
    :cond_7
    iget-boolean v0, p0, Lcom/apk/iu;->catch:Z

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/apk/iu;->goto:Lcom/apk/iu;

    iget-boolean v1, v0, Lcom/apk/iu;->return:Z

    if-eqz v1, :cond_8

    .line 16
    iget-object v0, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput-boolean v3, v0, Lcom/apk/cu;->private:Z

    .line 17
    :cond_8
    invoke-virtual {p0}, Lcom/apk/iu;->catch()V

    .line 18
    invoke-virtual {p0}, Lcom/apk/iu;->new()V

    .line 19
    iget-boolean v0, p0, Lcom/apk/iu;->this:Z

    if-nez v0, :cond_b

    .line 20
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v0, v0, Lcom/apk/cu;->private:Z

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    if-nez v0, :cond_9

    .line 22
    new-instance v0, Lcom/apk/gu;

    invoke-direct {v0, p0}, Lcom/apk/gu;-><init>(Lcom/apk/iu;)V

    iput-object v0, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    iget-object v1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v1, v1, Lcom/apk/cu;->abstract:I

    invoke-virtual {v0, v1}, Lcom/apk/gu;->if(I)V

    goto :goto_5

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/apk/iu;->while:Lcom/apk/gu;

    if-eqz v0, :cond_e

    .line 25
    invoke-virtual {v0}, Lcom/apk/gu;->do()V

    goto :goto_5

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/apk/iu;->goto:Lcom/apk/iu;

    if-eqz v0, :cond_e

    .line 27
    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v1, v1, Lcom/apk/cu;->private:Z

    if-eqz v1, :cond_d

    .line 28
    iget-object v1, v0, Lcom/apk/iu;->while:Lcom/apk/gu;

    if-nez v1, :cond_c

    .line 29
    new-instance v1, Lcom/apk/gu;

    invoke-direct {v1, v0}, Lcom/apk/gu;-><init>(Lcom/apk/iu;)V

    iput-object v1, v0, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 30
    :cond_c
    iget-object v0, p0, Lcom/apk/iu;->goto:Lcom/apk/iu;

    iget-object v1, v0, Lcom/apk/iu;->while:Lcom/apk/gu;

    iget-object v0, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v0, v0, Lcom/apk/cu;->abstract:I

    invoke-virtual {v1, v0}, Lcom/apk/gu;->if(I)V

    goto :goto_5

    .line 31
    :cond_d
    iget-object v0, v0, Lcom/apk/iu;->while:Lcom/apk/gu;

    if-eqz v0, :cond_e

    .line 32
    invoke-virtual {v0}, Lcom/apk/gu;->do()V

    .line 33
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v0, v0, Lcom/apk/cu;->public:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 34
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v0, v0, Lcom/apk/cu;->public:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 38
    iget-object v3, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v3, v3, Lcom/apk/cu;->do:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 39
    iget-object v5, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v5, v5, Lcom/apk/cu;->import:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 40
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_f

    .line 43
    iget-object v1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v1, v1, Lcom/apk/cu;->return:F

    const/4 v6, 0x0

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-nez v1, :cond_11

    .line 44
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v5, v5, Lcom/apk/cu;->new:F

    invoke-static {v1, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    .line 45
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget v5, v5, Lcom/apk/cu;->return:F

    invoke-static {v1, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 46
    :cond_12
    iput-boolean v4, p0, Lcom/apk/iu;->native:Z

    :cond_13
    return-void
.end method

.method public final final()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/au;

    iget-object v1, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 2
    iget-boolean v0, p0, Lcom/apk/iu;->native:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apk/iu;->public:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 4
    iget v0, v0, Lcom/apk/au;->if:I

    .line 5
    iput v0, p0, Lcom/apk/iu;->throw:I

    :cond_1
    return-void
.end method

.method public final for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/iu;->goto:Lcom/apk/iu;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apk/iu;->super(Landroid/app/Activity;)Lcom/apk/iu;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/iu;->goto:Lcom/apk/iu;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/iu;->goto:Lcom/apk/iu;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/apk/iu;->native:Z

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/iu;->else()V

    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    return-object v0
.end method

.method public final goto(Landroid/view/Window;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    .line 2
    new-instance p1, Lcom/apk/cu;

    invoke-direct {p1}, Lcom/apk/cu;-><init>()V

    iput-object p1, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 3
    iget-object p1, p0, Lcom/apk/iu;->try:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    const v0, 0x1020002

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/apk/iu;->else:Landroid/view/ViewGroup;

    return-void
.end method

.method public final new()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/apk/iu;->final()V

    .line 3
    iget-object v0, p0, Lcom/apk/iu;->case:Landroid/view/ViewGroup;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/iu;->if(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/apk/iu;->class(IIII)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v0, v0, Lcom/apk/cu;->static:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/apk/iu;->import:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 7
    iget v0, v0, Lcom/apk/au;->do:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v3, v3, Lcom/apk/cu;->package:Z

    if-eqz v3, :cond_2

    .line 9
    iget-object v0, p0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 10
    iget v0, v0, Lcom/apk/au;->do:I

    .line 11
    iget v3, p0, Lcom/apk/iu;->throw:I

    add-int/2addr v0, v3

    .line 12
    :cond_2
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/apk/iu;->class(IIII)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v0, v0, Lcom/apk/cu;->package:Z

    if-eqz v0, :cond_4

    .line 14
    iput-boolean v1, p0, Lcom/apk/iu;->public:Z

    .line 15
    iget-object v0, p0, Lcom/apk/iu;->else:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 16
    :cond_4
    iput-boolean v2, p0, Lcom/apk/iu;->public:Z

    .line 17
    invoke-virtual {p0}, Lcom/apk/iu;->break()V

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v0, v0, Lcom/apk/cu;->default:Z

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apk/iu;->try(Landroid/app/Activity;)I

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 21
    :goto_2
    iget v4, p0, Lcom/apk/iu;->import:I

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eq v4, v1, :cond_14

    const/4 v7, 0x2

    if-eq v4, v7, :cond_d

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    goto/16 :goto_a

    .line 22
    :cond_6
    iget-object v4, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    new-array v5, v1, [Landroid/view/View;

    iget-object v7, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v7, v7, Lcom/apk/cu;->throws:Landroid/view/View;

    aput-object v7, v5, v2

    if-nez v4, :cond_7

    goto/16 :goto_a

    :cond_7
    if-gez v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_1d

    .line 23
    aget-object v7, v5, v4

    if-nez v7, :cond_9

    goto :goto_4

    .line 24
    :cond_9
    sget v8, Lcom/codelibrary/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_a

    move-object v8, v3

    .line 25
    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v0, :cond_c

    .line 26
    sget v8, Lcom/codelibrary/R$id;->immersion_fits_layout_overlap:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_b

    .line 28
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v6, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 29
    :cond_b
    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 31
    :cond_d
    iget-object v4, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    new-array v7, v1, [Landroid/view/View;

    iget-object v8, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v8, v8, Lcom/apk/cu;->switch:Landroid/view/View;

    aput-object v8, v7, v2

    if-nez v4, :cond_e

    goto/16 :goto_a

    :cond_e
    if-gez v0, :cond_f

    const/4 v0, 0x0

    :cond_f
    :goto_5
    if-ge v2, v1, :cond_1d

    .line 32
    aget-object v4, v7, v2

    if-nez v4, :cond_10

    goto :goto_6

    .line 33
    :cond_10
    sget v8, Lcom/codelibrary/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v4, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_11

    move-object v8, v3

    .line 34
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v0, :cond_13

    .line 35
    sget v9, Lcom/codelibrary/R$id;->immersion_fits_layout_overlap:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_12

    .line 37
    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v9, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 38
    :cond_12
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v0

    .line 40
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v11, v8

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 41
    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 42
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 43
    :cond_14
    iget-object v4, p0, Lcom/apk/iu;->do:Landroid/app/Activity;

    new-array v7, v1, [Landroid/view/View;

    iget-object v8, p0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v8, v8, Lcom/apk/cu;->switch:Landroid/view/View;

    aput-object v8, v7, v2

    if-nez v4, :cond_15

    goto :goto_a

    :cond_15
    if-gez v0, :cond_16

    const/4 v0, 0x0

    :cond_16
    :goto_7
    if-ge v2, v1, :cond_1d

    .line 44
    aget-object v4, v7, v2

    if-nez v4, :cond_17

    goto :goto_9

    .line 45
    :cond_17
    sget v8, Lcom/codelibrary/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v4, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_18

    move-object v8, v3

    .line 46
    :cond_18
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v0, :cond_1c

    .line 47
    sget v9, Lcom/codelibrary/R$id;->immersion_fits_layout_overlap:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_19

    .line 49
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    :cond_19
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v5, :cond_1b

    if-ne v10, v6, :cond_1a

    goto :goto_8

    .line 51
    :cond_1a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v0, v11

    add-int/2addr v11, v10

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v11, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v11, v8

    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 54
    invoke-virtual {v4, v10, v11, v8, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 56
    :cond_1b
    :goto_8
    new-instance v10, Lcom/apk/hu;

    invoke-direct {v10, v9, v4, v0, v8}, Lcom/apk/hu;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;ILjava/lang/Integer;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1d
    :goto_a
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/iu;->break()V

    return-void
.end method
