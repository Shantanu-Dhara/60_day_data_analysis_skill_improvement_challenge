import streamlit as st
import random

# Page configuration
st.set_page_config(
    page_title="Rock Paper Scissors Game",
    page_icon="🎮",
    layout="centered"
)

# Custom styling
st.markdown(
    """
    <style>
    .main {
        background-color: #f5f7fa;
    }
    .title {
        text-align: center;
        font-size: 42px;
        font-weight: bold;
        color: #2c3e50;
        margin-bottom: 10px;
    }
    .subtitle {
        text-align: center;
        font-size: 18px;
        color: #7f8c8d;
        margin-bottom: 30px;
    }
    .result-box {
        padding: 20px;
        border-radius: 12px;
        text-align: center;
        font-size: 24px;
        font-weight: bold;
        margin-top: 20px;
    }
    </style>
    """,
    unsafe_allow_html=True
)

# Session state for score tracking
if "user_score" not in st.session_state:
    st.session_state.user_score = 0
if "computer_score" not in st.session_state:
    st.session_state.computer_score = 0
if "ties" not in st.session_state:
    st.session_state.ties = 0


def is_win(player, opponent):
    """Return True if player wins against opponent."""
    return (
        (player == 'r' and opponent == 's') or
        (player == 's' and opponent == 'p') or
        (player == 'p' and opponent == 'r')
    )


def get_choice_name(choice):
    """Convert shorthand choice into full word with emoji."""
    choices = {
        'r': '🪨 Rock',
        'p': '📄 Paper',
        's': '✂️ Scissors'
    }
    return choices[choice]


def play_game(user_choice):
    """Main game logic."""
    computer_choice = random.choice(['r', 'p', 's'])

    if user_choice == computer_choice:
        st.session_state.ties += 1
        return "It's a Tie! 🤝", computer_choice

    if is_win(user_choice, computer_choice):
        st.session_state.user_score += 1
        return "You Won! 🎉", computer_choice

    st.session_state.computer_score += 1
    return "You Lost! 😢", computer_choice


# Header
st.markdown('<div class="title">🎮 Rock Paper Scissors</div>', unsafe_allow_html=True)
st.markdown('<div class="subtitle">Challenge the computer and test your luck!</div>', unsafe_allow_html=True)

# Scoreboard
st.subheader("🏆 Scoreboard")
col1, col2, col3 = st.columns(3)

with col1:
    st.metric("You", st.session_state.user_score)
with col2:
    st.metric("Computer", st.session_state.computer_score)
with col3:
    st.metric("Ties", st.session_state.ties)

st.divider()

# User choice section
st.subheader("Choose Your Move:")
col1, col2, col3 = st.columns(3)

user_choice = None

with col1:
    if st.button("🪨 Rock", use_container_width=True):
        user_choice = 'r'

with col2:
    if st.button("📄 Paper", use_container_width=True):
        user_choice = 'p'

with col3:
    if st.button("✂️ Scissors", use_container_width=True):
        user_choice = 's'

# Game result
if user_choice:
    result, computer_choice = play_game(user_choice)

    st.write(f"### Your Choice: {get_choice_name(user_choice)}")
    st.write(f"### Computer's Choice: {get_choice_name(computer_choice)}")

    if "Won" in result:
        st.success(result)
    elif "Lost" in result:
        st.error(result)
    else:
        st.info(result)

# Reset button
st.divider()
if st.button("🔄 Reset Score"):
    st.session_state.user_score = 0
    st.session_state.computer_score = 0
    st.session_state.ties = 0
    st.rerun()

# Footer
st.markdown("---")
st.caption("Built with Streamlit • Beginner Python Project")
